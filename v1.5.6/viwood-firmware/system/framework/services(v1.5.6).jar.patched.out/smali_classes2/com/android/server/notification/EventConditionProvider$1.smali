.class public Lcom/android/server/notification/EventConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "EventConditionProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-static {p0}, Lcom/android/server/notification/EventConditionProvider;->-$$Nest$fgetmCurrentUser(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/notification/EventConditionProvider;->-$$Nest$mreloadTrackers(Lcom/android/server/notification/EventConditionProvider;Landroid/os/UserHandle;)V

    return-void
.end method
