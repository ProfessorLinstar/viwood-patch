.class public Lcom/android/server/TradeInModeService$2;
.super Ljava/lang/Object;
.source "TradeInModeService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/android/server/TradeInModeService$2;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/android/server/TradeInModeService$2;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V

    return-void
.end method
