.class public Lcom/android/server/display/DisplayManagerService$UidImportanceListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 1

    .line 1121
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->onUidImportanceFlagged(II)V

    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->onUidImportanceUnflagged(II)V

    return-void
.end method

.method public final onUidImportanceFlagged(II)V
    .locals 3

    const/16 v0, 0x190

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    .line 1163
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1164
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmCallbackRecordByPidByUid(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 1166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->setCachedLocked(Landroid/util/SparseArray;)V

    const/4 p0, 0x0

    goto :goto_1

    .line 1171
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->setUncachedLocked(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p0

    .line 1173
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 1176
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 1177
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dispatchPending()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 1173
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUidImportanceUnflagged(II)V
    .locals 5

    .line 1129
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x3e8

    if-lt p2, v1, :cond_0

    .line 1132
    :try_start_0
    const-string p2, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop pending events for gone uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/16 v1, 0x190

    if-lt p2, v1, :cond_1

    .line 1137
    monitor-exit v0

    return-void

    .line 1141
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_2

    .line 1143
    monitor-exit v0

    return-void

    .line 1147
    :cond_2
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1148
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " becomes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p2, 0x0

    .line 1150
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_5

    .line 1151
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$PendingCallback;

    if-eqz v2, :cond_4

    .line 1153
    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService$PendingCallback;->sendPendingDisplayEvent()V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1156
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1157
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setCachedLocked(Landroid/util/SparseArray;)V
    .locals 2

    const/4 p0, 0x0

    .line 1185
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 1186
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1188
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setCached(Z)Z

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setUncachedLocked(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 1197
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1198
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v2, :cond_1

    .line 1200
    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setCached(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p0, :cond_0

    .line 1201
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method
