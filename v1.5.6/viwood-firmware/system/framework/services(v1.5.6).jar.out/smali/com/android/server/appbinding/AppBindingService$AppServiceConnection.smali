.class public Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "AppBindingService.java"


# instance fields
.field public final mConstants:Lcom/android/server/appbinding/AppBindingConstants;

.field public final mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/AppServiceFinder;Landroid/content/ComponentName;)V
    .locals 15

    move-object/from16 v0, p3

    .line 440
    iget-wide v7, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    iget-wide v9, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    iget-wide v11, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    iget-wide v13, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    const-string v2, "AppBindingService"

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    move-object/from16 v2, p5

    .line 445
    iput-object v2, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 446
    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public getBindFlags()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    invoke-virtual {v0, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I

    move-result p0

    return p0
.end method

.method public getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    return-object p0
.end method
