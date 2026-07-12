.class public Lcom/android/server/stats/pull/StatsPullAtomService$1;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;


# instance fields
.field public final synthetic val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/os/SynchronousResultReceiver;)V
    .locals 0

    .line 1927
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$1;->val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 2

    .line 1931
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1932
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1934
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$1;->val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onBluetoothActivityEnergyInfoError(I)V
    .locals 2

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error reading Bluetooth stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatsPullAtomService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1941
    const-string v0, "controller_activity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1943
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$1;->val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
