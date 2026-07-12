.class public Lcom/android/server/UiModeManagerService$14;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 592
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p1

    if-nez p1, :cond_0

    .line 593
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistComputedNightMode(Lcom/android/server/UiModeManagerService;I)V

    :cond_0
    return-void
.end method
