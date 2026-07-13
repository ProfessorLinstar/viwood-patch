.class public Lcom/android/server/am/ActiveServices$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mService:Lcom/android/server/am/ServiceRecord;

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    .line 4697
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4705
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4707
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 4701
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    return-void
.end method
