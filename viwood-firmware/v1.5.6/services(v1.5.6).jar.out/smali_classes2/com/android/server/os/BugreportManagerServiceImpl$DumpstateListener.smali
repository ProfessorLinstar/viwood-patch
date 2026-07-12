.class public final Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "BugreportManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sNextId:I


# instance fields
.field public final mCaller:Landroid/util/Pair;

.field public mConsentGranted:Z

.field public mDone:Z

.field public final mDs:Landroid/os/IDumpstate;

.field public final mId:I

.field public mIsDeferredReport:Z

.field public mKeepBugreportOnRetrieval:Z

.field public final mListener:Landroid/os/IDumpstateListener;

.field public mProgress:I

.field public final mReportFinishedFile:Z

.field public final synthetic this$0:Lcom/android/server/os/BugreportManagerServiceImpl;


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZ)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 1017
    invoke-direct/range {v0 .. v8}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    .line 1001
    sget p1, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->sNextId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->sNextId:I

    iput p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    .line 1028
    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 1029
    iput-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    .line 1030
    iput-object p4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    .line 1031
    iput-boolean p5, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    .line 1032
    iput-boolean p6, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mKeepBugreportOnRetrieval:Z

    .line 1033
    iput-boolean p7, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mConsentGranted:Z

    .line 1034
    iput-boolean p8, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mIsDeferredReport:Z

    .line 1036
    :try_start_0
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1038
    const-string p1, "BugreportManagerService"

    const-string p2, "Unable to register Death Recipient for IDumpstate"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 1101
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :catch_0
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1105
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    if-nez v1, :cond_0

    .line 1107
    const-string v1, "BugreportManagerService"

    const-string v2, "IDumpstate likely crashed. Notifying listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1109
    :try_start_2
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1114
    :catch_1
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1115
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    .line 1114
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1130
    const-string v0, "DumpstateListener:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    iget v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  id: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1132
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$smcallerToString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  caller: %s\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1133
    iget-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  reports finished file: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1134
    iget v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  progress: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1135
    iget-boolean p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "  done: %b\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 1053
    const-string v0, "BugreportManagerService"

    const-string/jumbo v1, "onError(): %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1055
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->releaseItselfLocked()V

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErroCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->reportFinishedLocked(Ljava/lang/String;)V

    .line 1057
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onError(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1057
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 4

    .line 1063
    const-string v0, "BugreportManagerService"

    const-string/jumbo v1, "onFinished(): %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1065
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->releaseItselfLocked()V

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->reportFinishedLocked(Ljava/lang/String;)V

    .line 1067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    iget-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmBugreportFileManager(Lcom/android/server/os/BugreportManagerServiceImpl;)Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    iget-boolean v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mKeepBugreportOnRetrieval:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->addBugreportFileForCaller(Landroid/util/Pair;Ljava/lang/String;Z)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmBugreportFileManager(Lcom/android/server/os/BugreportManagerServiceImpl;)Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mConsentGranted:Z

    iget-boolean v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mIsDeferredReport:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->logConsentGrantedForCaller(Ljava/lang/String;ZZ)V

    .line 1076
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onFinished(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1067
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onProgress(I)V
    .locals 0

    .line 1047
    iput p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    .line 1048
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onProgress(I)V

    return-void
.end method

.method public onScreenshotTaken(Z)V
    .locals 0

    .line 1084
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onScreenshotTaken(Z)V

    return-void
.end method

.method public onUiIntensiveBugreportDumpsFinished()V
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0}, Landroid/os/IDumpstateListener;->onUiIntensiveBugreportDumpsFinished()V

    return-void
.end method

.method public final releaseItselfLocked()V
    .locals 2

    const/4 v0, 0x1

    .line 1140
    iput-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 1141
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmCurrentDumpstateListener(Lcom/android/server/os/BugreportManagerServiceImpl;)Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1145
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fputmCurrentDumpstateListener(Lcom/android/server/os/BugreportManagerServiceImpl;Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;)V

    return-void

    .line 1147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseItselfLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is finished, but current listener is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmCurrentDumpstateListener(Lcom/android/server/os/BugreportManagerServiceImpl;)Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BugreportManagerService"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reportFinishedLocked(Ljava/lang/String;)V
    .locals 3

    .line 1125
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmNumberFinishedBugreports(Lcom/android/server/os/BugreportManagerServiceImpl;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fputmNumberFinishedBugreports(Lcom/android/server/os/BugreportManagerServiceImpl;I)V

    .line 1126
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$fgetmFinishedBugreports(Lcom/android/server/os/BugreportManagerServiceImpl;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    invoke-static {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$smcallerToString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DumpstateListener[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
