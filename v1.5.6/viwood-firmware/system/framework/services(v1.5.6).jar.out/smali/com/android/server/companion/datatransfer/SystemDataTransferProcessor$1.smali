.class public Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;
.super Ljava/lang/Object;
.source "SystemDataTransferProcessor.java"

# interfaces
.implements Landroid/companion/IOnMessageReceivedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;->this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onMessageReceived(I[B)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;->this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-static {p0, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->-$$Nest$monReceivePermissionRestore(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;[B)V

    return-void
.end method
