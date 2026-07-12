.class public Lcom/android/server/wm/SnapshotController$ActivitiesByTask;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public final mActivitiesMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;-><init>()V

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->add(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    .line 150
    invoke-virtual {v1, p1}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
