.class public Lcom/android/server/display/WifiDisplayController$3;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 356
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set WFD info with reason "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDisplayController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 349
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 350
    const-string p0, "WifiDisplayController"

    const-string v0, "Successfully set WFD info."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
