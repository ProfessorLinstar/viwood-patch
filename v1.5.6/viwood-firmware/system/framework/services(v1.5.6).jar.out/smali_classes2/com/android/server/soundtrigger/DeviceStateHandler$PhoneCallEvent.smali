.class public Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "DeviceStateHandler.java"


# instance fields
.field public final mIsInPhoneCall:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 236
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;->mIsInPhoneCall:Z

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneCallChange - inPhoneCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;->mIsInPhoneCall:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
