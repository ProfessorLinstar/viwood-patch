.class public Lcom/android/server/print/UserState$2;
.super Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
.source "UserState.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-$$Nest$fgetmLock(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->-$$Nest$fgetmPrintJobStateChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->-$$Nest$fgetmPrintJobStateChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 586
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
