.class public final Lcom/android/server/inputmethod/InputMethodMap;
.super Ljava/lang/Object;
.source "InputMethodMap.java"


# static fields
.field public static final EMPTY_MAP:Landroid/util/ArrayMap;


# instance fields
.field public final mMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/server/inputmethod/InputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static areSame(Lcom/android/server/inputmethod/InputMethodMap;Lcom/android/server/inputmethod/InputMethodMap;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMap;->size()I

    move-result v1

    .line 118
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_4

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodMap;->valueAt(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {p1, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    if-nez v5, :cond_2

    return v3

    .line 128
    :cond_2
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->marshal(Landroid/view/inputmethod/InputMethodInfo;)[B

    move-result-object v4

    .line 129
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->marshal(Landroid/view/inputmethod/InputMethodInfo;)[B

    move-result-object v5

    .line 130
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static emptyMap()Lcom/android/server/inputmethod/InputMethodMap;
    .locals 2

    .line 40
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMap;

    sget-object v1, Lcom/android/server/inputmethod/InputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public static of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/InputMethodMap;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMap;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public valueAt(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    return-object p0
.end method

.method public values()Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
