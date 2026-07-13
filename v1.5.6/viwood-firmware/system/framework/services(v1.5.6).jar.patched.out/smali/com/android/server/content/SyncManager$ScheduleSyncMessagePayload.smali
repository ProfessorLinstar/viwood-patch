.class public Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
.super Ljava/lang/Object;
.source "SyncManager.java"


# instance fields
.field public final minDelayMillis:J

.field public final syncOperation:Lcom/android/server/content/SyncOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncOperation;J)V
    .locals 0

    .line 1527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 1529
    iput-wide p2, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    return-void
.end method
