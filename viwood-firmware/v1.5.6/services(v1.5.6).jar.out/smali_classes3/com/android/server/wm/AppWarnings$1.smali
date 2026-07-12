.class public Lcom/android/server/wm/AppWarnings$1;
.super Ljava/lang/Object;
.source "AppWarnings.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$1;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 3

    .line 145
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$1;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$fgetmUiHandler(Lcom/android/server/wm/AppWarnings;)Lcom/android/server/wm/AppWarnings$UiHandler;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;I)V

    .line 150
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$1;->this$0:Lcom/android/server/wm/AppWarnings;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mclearAllPackageFlagsForUser(Lcom/android/server/wm/AppWarnings;I)V

    return-void
.end method
