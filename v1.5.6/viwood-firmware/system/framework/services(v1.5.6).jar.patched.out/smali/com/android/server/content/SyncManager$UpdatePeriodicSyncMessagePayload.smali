.class public Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
.super Ljava/lang/Object;
.source "SyncManager.java"


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final flex:J

.field public final pollFrequency:J

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 0

    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    iput-object p2, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1517
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    .line 1518
    iput-wide p5, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    .line 1519
    iput-object p7, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    return-void
.end method
