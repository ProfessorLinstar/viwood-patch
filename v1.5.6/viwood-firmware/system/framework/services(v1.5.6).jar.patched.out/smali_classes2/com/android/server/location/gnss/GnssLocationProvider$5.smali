.class public Lcom/android/server/location/gnss/GnssLocationProvider$5;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$5;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 608
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive broadcast intent, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 617
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$5;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$minjectSuplInit(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Intent;)V

    return-void
.end method
