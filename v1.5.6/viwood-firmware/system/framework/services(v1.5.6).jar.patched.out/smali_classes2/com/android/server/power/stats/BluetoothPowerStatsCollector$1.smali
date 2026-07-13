.class public Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;
.super Ljava/lang/Object;
.source "BluetoothPowerStatsCollector.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;


# instance fields
.field public final synthetic val$immediateFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 172
    iput-object p2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBluetoothActivityEnergyInfoError(I)V
    .locals 3

    .line 181
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
