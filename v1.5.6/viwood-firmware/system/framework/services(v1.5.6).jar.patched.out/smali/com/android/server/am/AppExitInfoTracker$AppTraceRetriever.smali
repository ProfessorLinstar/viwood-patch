.class Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;
.super Landroid/app/IAppTraceRetriever$Stub;
.source "AppExitInfoTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0

    .line 1873
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Landroid/app/IAppTraceRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 9

    .line 1877
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const-string v1, "getTraceFileDescriptor"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1884
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1886
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p2

    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string v7, "getTraceFileDescriptor"

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p2

    const-string v0, "getTraceFileDescriptor"

    invoke-virtual {p2, p1, v4, v3, v0}, Lcom/android/server/am/ActivityManagerService;->enforceDumpPermissionForPackage(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    .line 1891
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1892
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$mgetExitInfoLocked(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1894
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 1896
    :cond_0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1898
    monitor-exit v2

    return-object v1

    .line 1900
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 p3, 0x10000000

    .line 1903
    :try_start_1
    invoke-static {p0, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1908
    :try_start_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1909
    throw p0

    .line 1908
    :catch_0
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    return-object v1

    .line 1910
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    return-object v1

    .line 1880
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
