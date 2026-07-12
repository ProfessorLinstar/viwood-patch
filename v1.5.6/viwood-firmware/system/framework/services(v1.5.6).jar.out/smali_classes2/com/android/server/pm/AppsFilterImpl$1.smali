.class public Lcom/android/server/pm/AppsFilterImpl$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "AppsFilterImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AppsFilterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterSnapshot;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/AppsFilterSnapshot;
    .locals 1

    .line 238
    new-instance v0, Lcom/android/server/pm/AppsFilterSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AppsFilterSnapshotImpl;-><init>(Lcom/android/server/pm/AppsFilterImpl;)V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl$1;->createSnapshot()Lcom/android/server/pm/AppsFilterSnapshot;

    move-result-object p0

    return-object p0
.end method
