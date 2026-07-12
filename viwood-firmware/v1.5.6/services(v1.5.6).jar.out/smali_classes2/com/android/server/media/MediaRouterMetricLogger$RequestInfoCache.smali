.class Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;
.super Ljava/util/LinkedHashMap;
.source "MediaRouterMetricLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Long;",
        "Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final capacity:I

.field final synthetic this$0:Lcom/android/server/media/MediaRouterMetricLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterMetricLogger;I)V
    .locals 1

    .line 201
    iput-object p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, p2, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 203
    iput p2, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;->capacity:I

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4

    .line 208
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;->capacity:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicted request info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaRouterMetricLogger"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;->this$0:Lcom/android/server/media/MediaRouterMetricLogger;

    .line 212
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    iget p1, p1, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    .line 211
    invoke-virtual {p0, p1, v2}, Lcom/android/server/media/MediaRouterMetricLogger;->logOperationTriggered(II)V

    :cond_1
    return v0
.end method
