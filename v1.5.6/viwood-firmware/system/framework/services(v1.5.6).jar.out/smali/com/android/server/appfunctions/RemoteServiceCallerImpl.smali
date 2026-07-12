.class public Lcom/android/server/appfunctions/RemoteServiceCallerImpl;
.super Ljava/lang/Object;
.source "RemoteServiceCallerImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/RemoteServiceCaller;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mInterfaceConverter:Ljava/util/function/Function;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExecutor(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterfaceConverter(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/function/Function;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mInterfaceConverter:Ljava/util/function/Function;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mInterfaceConverter:Ljava/util/function/Function;

    .line 62
    iput-object p3, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public runServiceCall(Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)Z
    .locals 10

    .line 74
    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)V

    .line 84
    invoke-virtual {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->bindAndRun()Z

    move-result p0

    return p0
.end method
