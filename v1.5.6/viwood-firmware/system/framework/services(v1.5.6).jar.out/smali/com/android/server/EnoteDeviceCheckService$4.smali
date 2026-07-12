.class public Lcom/android/server/EnoteDeviceCheckService$4;
.super Ljava/lang/Object;
.source "EnoteDeviceCheckService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/EnoteDeviceCheckService;


# direct methods
.method public constructor <init>(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/android/server/EnoteDeviceCheckService$4;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 449
    :try_start_0
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$4;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {p0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$mhideDeviceUnlockDialogView(Lcom/android/server/EnoteDeviceCheckService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideDeviceUnlockDialogView failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnoteDeviceCheckService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
