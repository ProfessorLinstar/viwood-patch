.class public abstract Lcom/android/server/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method public static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 4

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 81
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    const/4 p0, 0x2

    return p0

    :cond_7
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 16

    move-object/from16 v0, p0

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 174
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 175
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    new-array v3, v1, [B

    .line 177
    new-array v4, v1, [Landroid/icu/util/ULocale;

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_8

    .line 181
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v8

    if-nez v8, :cond_1

    move-object/from16 v12, p2

    goto :goto_3

    :cond_1
    const/4 v10, 0x1

    move v11, v6

    :goto_1
    if-ge v11, v1, :cond_5

    move-object/from16 v12, p2

    .line 188
    invoke-virtual {v12, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    .line 189
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 190
    aput-byte v6, v3, v11

    goto :goto_2

    .line 193
    :cond_2
    aget-object v14, v4, v11

    if-nez v14, :cond_3

    .line 195
    invoke-static {v13}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v13

    .line 194
    invoke-static {v13}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v13

    aput-object v13, v4, v11

    .line 197
    :cond_3
    aget-object v13, v4, v11

    .line 198
    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v14

    .line 197
    invoke-static {v13, v14}, Lcom/android/server/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v13

    aput-byte v13, v3, v11

    if-eqz v10, :cond_4

    if-eqz v13, :cond_4

    move v10, v6

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v12, p2

    if-eqz v10, :cond_6

    goto :goto_3

    .line 207
    :cond_6
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    if-nez v10, :cond_7

    .line 210
    new-instance v10, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v10, v3, v7}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    invoke-virtual {v2, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 212
    :cond_7
    invoke-virtual {v10, v3, v7}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 216
    :cond_8
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 217
    new-array v3, v1, [Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    move v4, v6

    :goto_4
    if-ge v4, v1, :cond_9

    .line 219
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 221
    :cond_9
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_5
    if-ge v6, v1, :cond_a

    .line 222
    aget-object v2, v3, v6

    .line 223
    iget v2, v2, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
