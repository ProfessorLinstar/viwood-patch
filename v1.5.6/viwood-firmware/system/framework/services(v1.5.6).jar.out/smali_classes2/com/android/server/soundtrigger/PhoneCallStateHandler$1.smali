.class public Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "PhoneCallStateHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddListenerFailed()V
    .locals 1

    .line 78
    const-string p0, "SoundTriggerPhoneCallStateHandler"

    const-string v0, "Failed to add a telephony listener"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    invoke-static {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->-$$Nest$mupdateTelephonyListeners(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    return-void
.end method
