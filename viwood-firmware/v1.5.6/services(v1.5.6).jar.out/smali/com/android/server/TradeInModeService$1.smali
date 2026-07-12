.class public Lcom/android/server/TradeInModeService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "TradeInModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/server/TradeInModeService$1;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 408
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 409
    iget-object p0, p0, Lcom/android/server/TradeInModeService$1;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V

    return-void
.end method
