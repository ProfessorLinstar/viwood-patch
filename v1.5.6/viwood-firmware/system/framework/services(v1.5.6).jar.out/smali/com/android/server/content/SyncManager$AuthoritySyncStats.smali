.class public Lcom/android/server/content/SyncManager$AuthoritySyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# instance fields
.field public accountMap:Ljava/util/Map;

.field public elapsedTime:J

.field public name:Ljava/lang/String;

.field public times:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2932
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2935
    iput-object p1, p0, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/content/SyncManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
