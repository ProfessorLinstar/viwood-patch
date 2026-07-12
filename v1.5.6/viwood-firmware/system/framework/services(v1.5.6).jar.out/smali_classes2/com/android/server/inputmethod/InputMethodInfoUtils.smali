.class public abstract Lcom/android/server/inputmethod/InputMethodInfoUtils;
.super Ljava/lang/Object;
.source "InputMethodInfoUtils.java"


# static fields
.field public static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;


# direct methods
.method public static bridge synthetic -$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 59
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public static chooseSystemVoiceIme(Lcom/android/server/inputmethod/InputMethodMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 5

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 213
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 215
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMap;->size()I

    move-result p2

    const/4 v0, 0x0

    move-object v2, v1

    :goto_0
    if-ge v0, p2, :cond_5

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodMap;->valueAt(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At most one InputMethodService can be published in systemSpeechRecognizer: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Ignoring all of them."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodInfoUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    move-object v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 8

    .line 171
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getFallbackLocaleForDefaultIme(Ljava/util/List;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 177
    invoke-static {p0}, Lcom/android/server/inputmethod/LocaleUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    .line 179
    invoke-static {p1, p0, v5, v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/List;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v6, 0x1

    .line 181
    sget-object v7, Lcom/android/server/inputmethod/SubtypeUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    move-result-object p0

    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/List;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 185
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/List;Landroid/content/Context;)Ljava/util/Locale;
    .locals 18

    move-object/from16 v0, p0

    .line 291
    sget-object v1, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v8, v1, v4

    move v11, v3

    .line 292
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_1

    .line 293
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v9, 0x1

    const-string v10, "keyboard"

    const/4 v7, 0x1

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    :cond_2
    sget-object v1, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v15, v1, v4

    move v5, v3

    .line 303
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 304
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    const/16 v16, 0x1

    const-string v17, "keyboard"

    const/4 v14, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v12 .. v17}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v15

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 311
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found no fallback locale. imis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodInfoUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMinimumKeyboardSetWithSystemLocale(Ljava/util/List;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;
    .locals 7

    .line 133
    new-instance v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;-><init>(Lcom/android/server/inputmethod/InputMethodInfoUtils-IA;)V

    const/4 v5, 0x1

    .line 134
    const-string v6, "keyboard"

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 136
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 139
    const-string v6, "keyboard"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    move-object p0, v4

    .line 141
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    .line 144
    const-string v6, "keyboard"

    const/4 v3, 0x1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 146
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 149
    const-string v6, "keyboard"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 151
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    .line 154
    const-string v6, "keyboard"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 156
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 159
    const-string v6, "keyboard"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 161
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return-object v0

    .line 164
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No software keyboard is found. imis="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " systemLocale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " fallbackLocale="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodInfoUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6

    if-eqz p0, :cond_5

    .line 241
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 249
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 250
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string v5, "keyboard"

    invoke-static {v3, v4, v2, v5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v3

    :cond_3
    if-gez v1, :cond_1

    .line 257
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    .line 261
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    return-object p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 2

    .line 266
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 275
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    move p2, v1

    :goto_0
    if-ge p2, p1, :cond_4

    .line 277
    invoke-virtual {p0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 2

    .line 318
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 321
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 324
    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static marshal(Landroid/view/inputmethod/InputMethodInfo;)[B
    .locals 2

    .line 338
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 339
    :try_start_1
    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    :cond_0
    throw p0
.end method
