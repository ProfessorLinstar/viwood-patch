.class public final Lcom/android/server/inputmethod/InputMethodSettings;
.super Ljava/lang/Object;
.source "InputMethodSettings.java"


# static fields
.field public static final INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;


# instance fields
.field public final mMethodList:Ljava/util/List;

.field public final mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodMap;I)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 102
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMap;->values()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 103
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    return-void
.end method

.method public static buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .locals 3

    .line 83
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x3b

    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;
    .locals 1

    .line 97
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    return-object v0
.end method

.method public static createEmptyMap(I)Lcom/android/server/inputmethod/InputMethodSettings;
    .locals 2

    .line 93
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMap;->emptyMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    return-object v0
.end method

.method public static updateEnabledImeString(Ljava/lang/String;Ljava/lang/String;Landroid/util/IntArray;)Ljava/lang/String;
    .locals 8

    .line 632
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 634
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v5, p0

    .line 641
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 642
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    .line 643
    invoke-virtual {v2, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v5, :cond_1

    .line 646
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    :cond_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 649
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p0

    .line 650
    :goto_1
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 651
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p2, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 655
    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 660
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 304
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->loadInputMethodAndSubtypeHistory()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 305
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 306
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 307
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 219
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 220
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 221
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 222
    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v1, v5

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    const/16 v4, 0x3a

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v2, v5

    .line 233
    :goto_1
    invoke-static {p1, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 238
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public final createEnabledInputMethodList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 4

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 247
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 248
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 249
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    .line 251
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDefaultVoiceInputMethod()Ljava/lang/String;
    .locals 2

    .line 538
    const-string v0, "default_voice_input_method"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodList()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->createEnabledInputMethodList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .locals 8

    .line 159
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 162
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 163
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 164
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 165
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p0

    move p1, v2

    :goto_1
    if-ge p1, p0, :cond_3

    .line 168
    invoke-virtual {v5, p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    move v3, v2

    .line 169
    :goto_2
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 170
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 171
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 151
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 152
    invoke-static {p0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object p0

    .line 151
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getImplicitlyApplicableSubtypes(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    :cond_0
    invoke-static {p1, v0}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodsAndSubtypeList()Ljava/util/List;
    .locals 5

    .line 184
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p0

    .line 185
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 187
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 194
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 195
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 198
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 201
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_2
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return-object v2
.end method

.method public getEnabledInputMethodsStr()Ljava/lang/String;
    .locals 2

    .line 273
    const-string v0, "enabled_input_methods"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEnabledSubtypeHashCodeForInputMethodAndSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 403
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 404
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 405
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 406
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 407
    iget-object p1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 408
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    .line 409
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p0, :cond_4

    .line 414
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 416
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/SubtypeUtils;->getImplicitlyApplicableSubtypes(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p0

    .line 418
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_4

    .line 420
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 421
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 428
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 429
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 434
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->isValidSubtypeHashCode(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p2

    .line 437
    :cond_2
    sget-object p0, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 440
    :catch_0
    sget-object p0, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 446
    :cond_4
    sget-object p0, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    return-object p0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getLastInputMethodAndSubtype()Landroid/util/Pair;
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    .line 343
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodAndSubtype()Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 345
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 346
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 352
    :cond_1
    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 353
    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 355
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getLastSubtypeForInputMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 367
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6

    .line 375
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->loadInputMethodAndSubtypeHistory()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 377
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 378
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 379
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    :cond_0
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 384
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    return-object p0
.end method

.method public getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    return-object p0
.end method

.method public getNewAdditionalSubtypeMap(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/inputmethod/AdditionalSubtypeMap;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-static {p4, p5, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-object p3

    .line 589
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 590
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->cloneWithRemoveOrSelf(Ljava/lang/String;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p0

    return-object p0

    .line 592
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->cloneWithPut(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedDefaultDeviceInputMethod()Ljava/lang/String;
    .locals 2

    .line 515
    const-string v0, "default_device_input_method"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedInputMethod()Ljava/lang/String;
    .locals 2

    .line 506
    const-string v0, "default_input_method"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedInputMethodSubtypeHashCode()I
    .locals 2

    .line 546
    const-string/jumbo v0, "selected_input_method_subtype"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result p0

    .line 560
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    return p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 124
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSubtypeHistoryStr()Ljava/lang/String;
    .locals 2

    .line 483
    const-string v0, "input_methods_subtype_history"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 551
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    return p0
.end method

.method public final loadInputMethodAndSubtypeHistory()Ljava/util/List;
    .locals 5

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    move-result-object p0

    .line 456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 461
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 463
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 464
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 465
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 466
    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 468
    sget-object p0, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    .line 470
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 472
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 475
    :cond_2
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public putDefaultVoiceInputMethod(Ljava/lang/String;)V
    .locals 1

    .line 533
    const-string v0, "default_voice_input_method"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putEnabledInputMethodsStr(Ljava/lang/String;)V
    .locals 2

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "enabled_input_methods"

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putInt(Ljava/lang/String;II)V

    return-void
.end method

.method public putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V
    .locals 1

    .line 526
    const-string v0, "default_device_input_method"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putSelectedInputMethod(Ljava/lang/String;)V
    .locals 1

    .line 494
    const-string v0, "default_input_method"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putSelectedSubtype(I)V
    .locals 1

    .line 501
    const-string/jumbo v0, "selected_input_method_subtype"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final putSubtypeHistoryStr(Ljava/lang/String;)V
    .locals 2

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "input_methods_subtype_history"

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 330
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1

    .line 565
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 567
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_0
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 570
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x3b

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v4

    .line 285
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_3

    .line 286
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 287
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 288
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    .line 289
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    sget-object p3, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    const/16 v5, 0x3a

    .line 293
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move p2, v3

    .line 297
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSubtypeHistoryStr(Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledInputMethodSubtypes(Ljava/lang/String;[I)Z
    .locals 6

    .line 599
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 604
    :cond_0
    new-instance v1, Landroid/util/IntArray;

    array-length v2, p2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 605
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, p2, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 609
    :cond_1
    invoke-static {p1, v4}, Lcom/android/server/inputmethod/SubtypeUtils;->isValidSubtypeHashCode(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 612
    :cond_2
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    goto :goto_1

    .line 615
    :cond_3
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p2

    .line 620
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-static {p2, p1, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->updateEnabledImeString(Ljava/lang/String;Ljava/lang/String;Landroid/util/IntArray;)Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v0

    .line 625
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
