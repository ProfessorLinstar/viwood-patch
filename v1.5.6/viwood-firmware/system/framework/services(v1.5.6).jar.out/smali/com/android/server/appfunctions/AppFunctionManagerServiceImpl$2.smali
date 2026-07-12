.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;
.super Landroid/app/appfunctions/ICancellationCallback$Stub;
.source "AppFunctionManagerServiceImpl.java"


# instance fields
.field public final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 470
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Landroid/app/appfunctions/ICancellationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p0, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    return-void
.end method
