.class public Lcom/android/server/media/quality/BiMap;
.super Ljava/lang/Object;
.source "BiMap.java"


# instance fields
.field public mPrimaryMap:Ljava/util/Map;

.field public mSecondaryMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/BiMap;->mPrimaryMap:Ljava/util/Map;

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/BiMap;->mSecondaryMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/media/quality/BiMap;->mSecondaryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/server/media/quality/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/server/media/quality/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/media/quality/BiMap;->mSecondaryMap:Ljava/util/Map;

    .line 43
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p0, p0, Lcom/android/server/media/quality/BiMap;->mSecondaryMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/quality/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/media/quality/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p0, p0, Lcom/android/server/media/quality/BiMap;->mSecondaryMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
