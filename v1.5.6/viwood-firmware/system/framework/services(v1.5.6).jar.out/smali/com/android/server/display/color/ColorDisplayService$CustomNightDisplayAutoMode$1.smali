.class public Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorDisplayService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

.field public final synthetic val$this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    .line 1226
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->val$this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1229
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->-$$Nest$mupdateActivated(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;)V

    return-void
.end method
