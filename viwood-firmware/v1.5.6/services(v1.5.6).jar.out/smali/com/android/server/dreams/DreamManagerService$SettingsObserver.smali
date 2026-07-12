.class public final Lcom/android/server/dreams/DreamManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DreamManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$SettingsObserver;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 225
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$SettingsObserver;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mupdateWhenToDreamSettings(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method
