.class public final Lcom/android/server/am/ActiveServices$ServiceLookupResult;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# instance fields
.field public final aliasComponent:Landroid/content/ComponentName;

.field public final permission:Ljava/lang/String;

.field public final record:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V
    .locals 0

    .line 4684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4685
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 p1, 0x0

    .line 4686
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    .line 4687
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V
    .locals 0

    .line 4690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4691
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 4692
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    .line 4693
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method
