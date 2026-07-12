.class public Lcom/mediatek/server/display/MtkWifiDisplayController$2;
.super Ljava/lang/Object;
.source "MtkWifiDisplayController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/display/MtkWifiDisplayController;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$2;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .line 250
    const-string v0, "MtkWifiDisplayController"

    const-string v1, "Stop WiFi scan/reconnect due to scan timer timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$2;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->stopWifiScan(Z)V

    return-void
.end method
