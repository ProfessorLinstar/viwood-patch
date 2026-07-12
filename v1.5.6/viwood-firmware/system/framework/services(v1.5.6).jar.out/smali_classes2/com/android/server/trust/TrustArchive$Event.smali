.class public Lcom/android/server/trust/TrustArchive$Event;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# instance fields
.field public final agent:Landroid/content/ComponentName;

.field public final duration:J

.field public final elapsedTimestamp:J

.field public final flags:I

.field public final managingTrust:Z

.field public final message:Ljava/lang/String;

.field public final type:I

.field public final userId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 61
    iput p2, p0, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    .line 62
    iput-object p3, p0, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    .line 64
    iput-object p4, p0, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    .line 65
    iput-wide p5, p0, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 66
    iput p7, p0, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    .line 67
    iput-boolean p8, p0, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    return-void
.end method

.method public synthetic constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    return-void
.end method
