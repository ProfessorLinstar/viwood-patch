.class public Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mIsProcessFrozen:Ljava/lang/Boolean;

.field public final mTimestamp:Ljava/time/ZonedDateTime;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 2144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2145
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mIsProcessFrozen:Ljava/lang/Boolean;

    .line 2146
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mTimestamp:Ljava/time/ZonedDateTime;

    return-void
.end method

.method public static withProcessFrozenStateAndTimestamp(ZLjava/time/ZonedDateTime;)Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .locals 1

    .line 2151
    new-instance v0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;-><init>(Ljava/lang/Boolean;Ljava/time/ZonedDateTime;)V

    return-object v0
.end method


# virtual methods
.method public getTimestamp()Ljava/time/ZonedDateTime;
    .locals 0

    .line 2159
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mTimestamp:Ljava/time/ZonedDateTime;

    return-object p0
.end method

.method public isProcessFrozen()Ljava/lang/Boolean;
    .locals 0

    .line 2155
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mIsProcessFrozen:Ljava/lang/Boolean;

    return-object p0
.end method
