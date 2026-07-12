.class public Lcom/android/server/hdmi/SystemAudioAction$1;
.super Ljava/lang/Object;
.source "SystemAudioAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/SystemAudioAction;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/server/hdmi/SystemAudioAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    invoke-static {p0}, Lcom/android/server/hdmi/SystemAudioAction;->-$$Nest$msendSystemAudioModeRequestInternal(Lcom/android/server/hdmi/SystemAudioAction;)V

    return-void
.end method
