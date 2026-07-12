.class Lcom/android/server/am/compaction/CompactionStatsManager$1;
.super Ljava/util/LinkedHashMap;
.source "CompactionStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/android/server/am/compaction/SingleCompactionStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/compaction/CompactionStatsManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/am/compaction/CompactionStatsManager$1;->this$0:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 83
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0x100

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
