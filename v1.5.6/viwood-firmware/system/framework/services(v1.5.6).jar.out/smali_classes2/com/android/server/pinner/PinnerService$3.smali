.class public Lcom/android/server/pinner/PinnerService$3;
.super Landroid/database/ContentObserver;
.source "PinnerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;

.field public final synthetic val$userSetupCompleteUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$3;->this$0:Lcom/android/server/pinner/PinnerService;

    iput-object p3, p0, Lcom/android/server/pinner/PinnerService$3;->val$userSetupCompleteUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 402
    iget-object p1, p0, Lcom/android/server/pinner/PinnerService$3;->val$userSetupCompleteUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/android/server/pinner/PinnerService$3;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {p1}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result p1

    if-lez p1, :cond_0

    .line 404
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$3;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p0, p2, p1, p2}, Lcom/android/server/pinner/PinnerService;->-$$Nest$msendPinAppMessage(Lcom/android/server/pinner/PinnerService;IIZ)V

    :cond_0
    return-void
.end method
