.class public Lcom/android/server/content/SyncManager$8;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V
    .locals 2

    .line 681
    iget-object p0, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    move-wide v0, p5

    move-object p6, p2

    move-wide p2, p3

    move-wide p4, v0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    return-void
.end method
