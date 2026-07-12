.class public Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
.super Ljava/lang/Object;
.source "KeyboardMetricsCollector.java"


# instance fields
.field public final mImeSubtypeList:Ljava/util/List;

.field public final mInputDevice:Landroid/view/InputDevice;

.field public mIsFirstConfiguration:Z

.field public final mLayoutSelectionCriteriaList:Ljava/util/List;

.field public final mSelectedLayoutList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mLayoutSelectionCriteriaList:Ljava/util/List;

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    iput-object p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    return-void
.end method


# virtual methods
.method public addLayoutSelection(Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;I)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
    .locals 1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {p3}, Lcom/android/server/input/KeyboardMetricsCollector;->-$$Nest$smisValidSelectionCriteria(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mLayoutSelectionCriteriaList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid layout selection criteria"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;
    .locals 12

    .line 234
    iget-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 240
    iget-object v3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mLayoutSelectionCriteriaList:Ljava/util/List;

    .line 241
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 242
    iget-object v3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 243
    iget-object v4, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyboardLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "None"

    if-eqz v5, :cond_0

    move-object v4, v6

    .line 246
    :cond_0
    iget-object v5, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    .line 247
    invoke-virtual {v5}, Landroid/view/InputDevice;->getKeyboardLayoutType()Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-static {v5}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutTypeEnumValue(Ljava/lang/String;)I

    move-result v5

    .line 249
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 250
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 252
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v10, v6

    goto :goto_2

    :cond_2
    move-object v10, v7

    .line 255
    :goto_2
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutTypeEnumValue(Ljava/lang/String;)I

    move-result v9

    .line 258
    iget-object v3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 259
    const-string v3, "Default"

    :goto_3
    move-object v7, v3

    move-object v6, v4

    goto :goto_4

    .line 260
    :cond_3
    iget-object v3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    .line 262
    :goto_4
    new-instance v4, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/server/input/KeyboardMetricsCollector-IA;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_4
    new-instance v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;

    iget-object v2, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    iget-boolean p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mIsFirstConfiguration:Z

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v1, v3}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;-><init>(Landroid/view/InputDevice;ZLjava/util/List;Lcom/android/server/input/KeyboardMetricsCollector-IA;)V

    return-object v0

    .line 236
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should have at least one configuration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIsFirstTimeConfiguration(Z)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mIsFirstConfiguration:Z

    return-object p0
.end method
