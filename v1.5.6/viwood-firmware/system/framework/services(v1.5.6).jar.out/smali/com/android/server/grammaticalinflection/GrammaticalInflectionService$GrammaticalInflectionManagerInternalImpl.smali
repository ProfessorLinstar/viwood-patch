.class public final Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;
.super Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;
.source "GrammaticalInflectionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-direct {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/grammaticalinflection/GrammaticalInflectionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    return-void
.end method


# virtual methods
.method public applyRestoredSystemPayload([BI)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->applyRestoredSystemPayload([BI)V

    return-void
.end method

.method public canGetSystemGrammaticalGender(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 222
    :cond_0
    new-instance v0, Landroid/content/AttributionSource$Builder;

    invoke-direct {v0, p1}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p1

    .line 223
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$mcanGetSystemGrammaticalGender(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Landroid/content/AttributionSource;)Z

    move-result p0

    return p0
.end method

.method public getBackupPayload(I)[B
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    .line 171
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->getBackupPayload(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getGrammaticalGenderFromDeveloperSettings()I
    .locals 1

    .line 213
    const-string/jumbo p0, "persist.sys.grammatical_gender"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSystemBackupPayload(I)[B
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    .line 183
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->getSystemBackupPayload(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getSystemGrammaticalGender(I)I
    .locals 1

    .line 193
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$smcheckSystemTermsOfAddressIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public mergedFinalSystemGrammaticalGender()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$fgetmContext(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->getSystemGrammaticalGender(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->getGrammaticalGenderFromDeveloperSettings()I

    move-result v0

    :cond_0
    const/4 p0, -0x1

    if-ne v0, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public stageAndApplyRestoredPayload([BI)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->stageAndApplyRestoredPayload([BI)V

    return-void
.end method
