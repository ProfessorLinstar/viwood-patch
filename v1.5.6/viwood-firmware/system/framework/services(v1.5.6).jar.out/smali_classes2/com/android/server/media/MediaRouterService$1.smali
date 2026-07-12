.class public Lcom/android/server/media/MediaRouterService$1;
.super Landroid/app/UserSwitchObserver;
.source "MediaRouterService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$mupdateRunningUserAndProfiles(Lcom/android/server/media/MediaRouterService;I)V

    return-void
.end method
