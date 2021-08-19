import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/features/core/presentation/widgets/dropdown_field_widget.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

/// A stateless widget to render UploadIdentificationScreen.
class UploadIdentificationScreen extends StatelessWidget with AutoRouteWrapper {
  const UploadIdentificationScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AccountVerificationCubit>(),
      child: BlocListener<AccountVerificationCubit, AccountVerificationState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.isLeft() &&
                    c.status.getOrElse(() => null)!.fold(
                          (f) => f.foldCode(orElse: () => false),
                          (_) => false,
                        ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (eth) => eth?.fold(
            (f) => PopupDialog.error(message: f.message).render(c),
            (r) => PopupDialog.success(
              message: r?.message,
              listener: (_) => _?.fold(
                dismissed: () => r?.fold(
                  success: (p0) => p0.pop
                      ? navigator.pushAndPopUntil(
                          const VerificationSucessRoute(),
                          predicate: (_) => false,
                        )
                      : null,
                ),
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Helpers.appPadding),
            child: Center(
              child: AutoSizeText(
                '3 of 3',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              controller: ScrollController(),
              physics: Helpers.physics,
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: App.longest * 0.015),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        'Upload Identification',
                        softWrap: true,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Helpers.foldTheme(
                                light: () => Palette.accentColor,
                                dark: () => Palette.accentColor.shade50,
                              ),
                              fontSize: 27.0,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(
                      child: AutoSizeText(
                        'Please select a means of Identification and upload a matching ID.',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 16.0,
                              letterSpacing: Helpers.letterSpacing,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.07)),
                    //
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: BlocBuilder<AccountVerificationCubit,
                                AccountVerificationState>(
                              builder: (c, s) =>
                                  DropdownFieldWidget<Map<String, dynamic>>(
                                hint: '-- Select an ID to upload --',
                                items: AccountVerificationState.documentTypes
                                    .map<
                                        DropdownMenuItem<Map<String, dynamic>>>(
                                      (item) => DropdownMenuItem<
                                          Map<String, dynamic>>(
                                        value: item,
                                        child: AutoSizeText(
                                          '${item.entries.firstOrNone?.value}',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                validate: s.validate,
                                disabled: s.isLoading,
                                selected: s.documentType,
                                error: s.status.fold(
                                  () => null,
                                  (a) => a?.fold(
                                    (f) => f.errors?.document?.firstOrNone,
                                    (_) => null,
                                  ),
                                ),
                                onChanged: c
                                    .read<AccountVerificationCubit>()
                                    .documentTypeChanged,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    DottedBorder(
                      dashPattern: [6, 3, 2, 3],
                      borderType: BorderType.RRect,
                      padding: const EdgeInsets.all(5.0),
                      radius: const Radius.circular(Helpers.buttonRadius),
                      color: Helpers.computeLuminance(
                          Theme.of(context).scaffoldBackgroundColor),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: App.shortest * 0.5,
                          maxWidth: double.infinity,
                        ),
                        child: BlocBuilder<AccountVerificationCubit,
                            AccountVerificationState>(
                          builder: (c, s) => Material(
                            child: InkWell(
                              onTap: () async {
                                if (!s.isLoading)
                                  await App.showAdaptiveBottomSheet(
                                    context,
                                    builder: (_) => _DocumentPickerSheet(
                                      pickers: [
                                        _DocumentPicker(
                                          name: 'Camera',
                                          asset: Helpers.foldTheme(
                                            light: () =>
                                                AppAssets.cameraColored,
                                            dark: () =>
                                                AppAssets.cameraOutlined,
                                          ),
                                          onPressed: c
                                              .read<AccountVerificationCubit>()
                                              .pickFromCamera,
                                        ),
                                        _DocumentPicker(
                                          name: 'File Explorer',
                                          asset: Helpers.foldTheme(
                                            light: () =>
                                                AppAssets.folderColored,
                                            dark: () =>
                                                AppAssets.folderOutlined,
                                          ),
                                          onPressed: c
                                              .read<AccountVerificationCubit>()
                                              .pickFromExplorer,
                                        ),
                                      ],
                                    ),
                                  );
                              },
                              child: Container(
                                color: Helpers.foldTheme(
                                  light: () => Palette.inputBgColor,
                                  dark: () => Palette.secondaryColor.shade400,
                                ),
                                child: Center(
                                  child: s.mimeType == null
                                      ? Icon(
                                          Theme.of(context).platform.fold(
                                                material: () =>
                                                    Icons.photo_camera,
                                                cupertino: () =>
                                                    CupertinoIcons.camera,
                                              ),
                                          color: Colors.grey,
                                          size: 45.0,
                                        )
                                      : s.mimeType?.fold(
                                          img: Image.file(
                                            s.document!,
                                            fit: BoxFit.cover,
                                          ),
                                          doc: (a) => Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              a == DocumentMimeType.pdf
                                                  ? AppAssets.pdf
                                                  : AppAssets.docx,
                                              const VerticalSpace(height: 25),
                                              AutoSizeText(
                                                  '${s.documentName.getOrEmpty}'),
                                            ],
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: App.shortest * 0.1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ),
              child: BlocBuilder<AccountVerificationCubit,
                  AccountVerificationState>(
                buildWhen: (p, c) => p.isLoading != c.isLoading,
                builder: (c, s) => Column(
                  children: [
                    Visibility(
                      visible: !s.isLoading,
                      replacement: App.loadingHourGlass,
                      child: AppButton(
                        onPressed:
                            c.read<AccountVerificationCubit>().uploadDocumentID,
                        text: 'Upload ID',
                        textColor: Colors.white,
                        backgroundColor: Helpers.foldTheme(
                          light: () => Palette.accentColor,
                          dark: () => Colors.transparent,
                        ),
                        splashColor: Helpers.foldTheme(
                          light: () => Colors.white30,
                          dark: () => Colors.grey.shade800,
                        ),
                        side: Helpers.foldTheme(
                          light: () => null,
                          dark: () => const BorderSide(color: Colors.white),
                        ),
                        height: 30.0,
                      ),
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.04),
                    //
                    AppButton(
                      onPressed: () => navigator.pushAndPopUntil(
                        DashboardRoute(),
                        predicate: (_) => false,
                      ),
                      text: 'Skip for now',
                      textColor: Palette.errorRed,
                      backgroundColor: Colors.transparent,
                      splashColor: Helpers.foldTheme(
                        light: () => Colors.white30,
                        dark: () => Colors.grey.shade800,
                      ),
                      side: const BorderSide(color: Palette.errorRed),
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DocumentPickerSheet extends StatelessWidget {
  final List<_DocumentPicker> pickers;

  const _DocumentPickerSheet({
    Key? key,
    this.pickers = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 0.15.sh,
        child: LayoutBuilder(
          builder: (_, constraints) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...ListTile.divideTiles(
                context: context,
                tiles: pickers.map(
                  (p) => InkWell(
                    onTap: () {
                      p.onPressed.call();
                      navigator.pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                      child: SizedBox(
                        height: constraints.maxHeight / pickers.length,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 4,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: p.asset ?? const SizedBox.shrink(),
                                  ),
                                  //
                                  HorizontalSpace(width: 0.04.sw),
                                  //
                                  Flexible(
                                    child: AutoSizeText(
                                      p.name,
                                      style: TextStyle(fontSize: 17.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DocumentPicker {
  final String name;
  final Widget? asset;
  final VoidCallback onPressed;

  _DocumentPicker({
    required this.name,
    this.asset,
    required this.onPressed,
  });
}
