.class public final Lcom/android/server/ENoteSettingService$LocalServiceImpl;
.super Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;
.source "ENoteSettingService.java"


# instance fields
.field public final mService:Lcom/android/server/ENoteSettingService;


# direct methods
.method public constructor <init>(Lcom/android/server/ENoteSettingService;)V
    .locals 0

    .line 704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;-><init>(Lcom/android/server/ENoteSettingService;)V

    .line 705
    iput-object p1, p0, Lcom/android/server/ENoteSettingService$LocalServiceImpl;->mService:Lcom/android/server/ENoteSettingService;

    return-void
.end method


# virtual methods
.method public readFilefromNvram2(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$LocalServiceImpl;->mService:Lcom/android/server/ENoteSettingService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/ENoteSettingService;->-$$Nest$mreadFilefromNvram2(Lcom/android/server/ENoteSettingService;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setResumedActivityUncheckLocked(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$LocalServiceImpl;->mService:Lcom/android/server/ENoteSettingService;

    invoke-static {p0, p1, p2}, Lcom/android/server/ENoteSettingService;->-$$Nest$msetResumedActivityUncheckLocked(Lcom/android/server/ENoteSettingService;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public writeFileByNvram(Ljava/lang/String;II[B)I
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$LocalServiceImpl;->mService:Lcom/android/server/ENoteSettingService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/ENoteSettingService;->-$$Nest$mwriteFileByNvram(Lcom/android/server/ENoteSettingService;Ljava/lang/String;II[B)I

    move-result p0

    return p0
.end method
