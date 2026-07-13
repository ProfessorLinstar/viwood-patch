.class public final Lcom/android/server/timedetector/GnssTimeSuggestion;
.super Ljava/lang/Object;
.source "GnssTimeSuggestion.java"


# instance fields
.field public final mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;


# direct methods
.method public constructor <init>(Landroid/app/time/UnixEpochTime;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/app/timedetector/TimeSuggestionHelper;

    const-class v1, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-direct {v0, v1, p1}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    return-void
.end method

.method public constructor <init>(Landroid/app/timedetector/TimeSuggestionHelper;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    return-void
.end method

.method public static parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timedetector/GnssTimeSuggestion;
    .locals 1

    .line 89
    const-class v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 90
    invoke-static {v0, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;

    move-result-object p0

    .line 91
    new-instance v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-object v0
.end method

.method public static printCommandLineOpts(Ljava/io/PrintWriter;)V
    .locals 2

    .line 96
    const-string v0, "GNSS"

    const-class v1, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-static {p0, v0, v1}, Landroid/app/timedetector/TimeSuggestionHelper;->handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/server/timedetector/GnssTimeSuggestion;

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    check-cast p1, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 73
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    iget-object p1, p1, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {p0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;->handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {p0}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {p0}, Landroid/app/timedetector/TimeSuggestionHelper;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
