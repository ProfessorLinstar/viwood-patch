.class public Lcom/android/server/UiModeManagerService$11;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 417
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateSystemProperties(Lcom/android/server/UiModeManagerService;)V

    .line 418
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateForceInvertStates(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method
