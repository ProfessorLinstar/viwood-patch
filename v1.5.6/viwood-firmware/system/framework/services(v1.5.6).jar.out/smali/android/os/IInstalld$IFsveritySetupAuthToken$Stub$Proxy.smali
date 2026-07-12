.class public Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld$IFsveritySetupAuthToken;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 2201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2202
    iput-object p1, p0, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2206
    iget-object p0, p0, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
