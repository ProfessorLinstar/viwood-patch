.class public Lcom/android/server/display/ExternalDisplayStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "ExternalDisplayStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 177
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmExternalDisplayStates(Lcom/android/server/display/ExternalDisplayStatsService;)Landroid/util/SparseIntArray;

    move-result-object p1

    monitor-enter p1

    .line 178
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p2}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmExternalDisplayStates(Lcom/android/server/display/ExternalDisplayStatsService;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 179
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmExternalDisplayStates(Lcom/android/server/display/ExternalDisplayStatsService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmInjector(Lcom/android/server/display/ExternalDisplayStatsService;)Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {v2}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmExternalDisplayStates(Lcom/android/server/display/ExternalDisplayStatsService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->isInteractive(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 186
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmInteractiveExternalDisplays(Lcom/android/server/display/ExternalDisplayStatsService;)I

    move-result p1

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 193
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$mlogExternalDisplayIdleStarted(Lcom/android/server/display/ExternalDisplayStatsService;)V

    goto :goto_1

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmInteractiveExternalDisplays(Lcom/android/server/display/ExternalDisplayStatsService;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p2, p1, :cond_5

    .line 199
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$mlogExternalDisplayIdleEnded(Lcom/android/server/display/ExternalDisplayStatsService;)V

    .line 201
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fputmInteractiveExternalDisplays(Lcom/android/server/display/ExternalDisplayStatsService;I)V

    return-void

    .line 186
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
