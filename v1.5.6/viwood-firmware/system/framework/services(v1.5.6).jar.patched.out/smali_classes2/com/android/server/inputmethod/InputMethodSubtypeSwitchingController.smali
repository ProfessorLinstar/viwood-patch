.class public final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InputMethodSubtypeSwitchingController"


# instance fields
.field public mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

.field public mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

.field public mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

.field public mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

.field public mUserActionSinceSwitch:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcalculateSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 632
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController-IA;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 633
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 635
    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 637
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 638
    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 640
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 641
    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    return-void
.end method

.method public static calculateSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;
    .locals 5

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 795
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 796
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v4

    if-ne v4, p1, :cond_0

    .line 798
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInputMethodAndSubtypeListForHardwareKeyboard(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;
    .locals 17

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v0

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 293
    :goto_0
    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    const-string v1, "Enabled input method list is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 301
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v2

    :goto_1
    if-ge v13, v12, :cond_8

    .line 304
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 305
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v14, p1

    goto/16 :goto_7

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v14, p1

    .line 308
    invoke-virtual {v14, v7, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 309
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 310
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 311
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 312
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    move v8, v2

    :goto_2
    if-ge v8, v3, :cond_7

    .line 317
    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 318
    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 321
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    move-object v2, v9

    goto :goto_3

    .line 322
    :cond_3
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 323
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 322
    invoke-virtual {v5, v1, v6, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 324
    :goto_3
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_4
    move-object v6, v9

    move v9, v3

    goto :goto_5

    .line 326
    :cond_4
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 325
    invoke-virtual {v5, v1, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_4

    .line 327
    :goto_5
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 328
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    move-object v5, v2

    move v2, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    move v2, v3

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    const/4 v2, 0x0

    goto :goto_2

    .line 332
    :cond_6
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    return-object v11
.end method

.method public static getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;
    .locals 18

    .line 216
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v0

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move-object/from16 v1, p3

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 220
    :goto_0
    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    .line 222
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    const-string v1, "Enabled input method list is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    move v11, v2

    goto :goto_1

    :cond_2
    move/from16 v11, p0

    .line 233
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v2

    :goto_2
    if-ge v14, v13, :cond_b

    .line 236
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz p2, :cond_4

    .line 237
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v15, p4

    :cond_3
    move-object/from16 p3, v0

    goto/16 :goto_a

    :cond_4
    const/4 v3, 0x1

    move-object/from16 v15, p4

    .line 241
    invoke-virtual {v15, v7, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 242
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 243
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 244
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 246
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 247
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 248
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    move v8, v2

    :goto_4
    if-ge v8, v5, :cond_3

    .line 253
    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 254
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 256
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    if-nez v11, :cond_7

    .line 257
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v16

    if-nez v16, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 p3, v0

    move-object v2, v4

    move/from16 p0, v5

    move-object v4, v3

    goto :goto_9

    .line 259
    :cond_7
    :goto_5
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_8

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    goto :goto_6

    .line 260
    :cond_8
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p3, v0

    .line 261
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 260
    invoke-virtual {v6, v1, v2, v0}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 262
    :goto_6
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_7
    move-object v2, v4

    move-object v4, v3

    goto :goto_8

    .line 264
    :cond_9
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 263
    invoke-virtual {v6, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    goto :goto_7

    .line 265
    :goto_8
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 266
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    move/from16 p0, v5

    move-object v5, v0

    move-object v0, v9

    move-object v9, v6

    move-object/from16 v6, v17

    invoke-direct/range {v3 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, p0

    move-object/from16 v0, p3

    move-object v3, v4

    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 p3, v0

    move-object v4, v3

    .line 275
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p3

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 279
    :cond_b
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v12
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSwitchingAwareRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSwitchingUnawareRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$mdump(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;Landroid/util/Printer;Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHardwareRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$mdump(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;Landroid/util/Printer;Ljava/lang/String;)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "User action since last switch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getNextInputMethodForHardware(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 2

    move-object v0, p0

    .line 735
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 736
    invoke-virtual {v0, p4, p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->isRecency(IZ)Z

    move-result p4

    move-object v1, p3

    move p3, p1

    move-object p1, p2

    move-object p2, v1

    .line 735
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->next(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p0

    return-object p0
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 2

    move-object v0, p0

    .line 705
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 706
    invoke-virtual {v0, p4, p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->isRecency(IZ)Z

    move-result p4

    move-object v1, p3

    move p3, p1

    move-object p1, p2

    move-object p2, v1

    .line 705
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->next(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p0

    return-object p0
.end method

.method public final isRecency(IZ)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 781
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onInputMethodSubtypeChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    return-void
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->setMostRecent(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v0

    .line 755
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->setMostRecent(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 757
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    :cond_0
    return p1
.end method

.method public resetCircularListLocked(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 823
    invoke-static {v0, v0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v0

    .line 826
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getInputMethodAndSubtypeListForHardwareKeyboard(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object p1

    .line 823
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->update(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 661
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 663
    invoke-static {p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 666
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->-$$Nest$fgetmImeSubtypeList(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController-IA;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->-$$Nest$fgetmImeSubtypeList(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$fgetmItems(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;)Ljava/util/List;

    move-result-object v0

    .line 677
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 678
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 681
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$fgetmItems(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;)Ljava/util/List;

    move-result-object p1

    .line 682
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 683
    new-instance p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    :cond_3
    return-void
.end method
