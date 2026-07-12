.class public final Lcom/android/server/inputmethod/AdditionalSubtypeMap;
.super Ljava/lang/Object;
.source "AdditionalSubtypeMap.java"


# static fields
.field public static final EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;


# instance fields
.field public final mMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static createOrEmpty(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public static of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->createOrEmpty(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cloneWithPut(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 1

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 121
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public cloneWithRemoveOrSelf(Ljava/lang/String;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->createOrEmpty(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public cloneWithRemoveOrSelf(Ljava/util/Collection;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->createOrEmpty(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Collection;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
