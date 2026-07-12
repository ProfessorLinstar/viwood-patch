.class public Lcom/android/server/display/WifiDisplayController$1;
.super Landroid/database/ContentObserver;
.source "WifiDisplayController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$1;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$1;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mupdateSettings(Lcom/android/server/display/WifiDisplayController;)V

    return-void
.end method
