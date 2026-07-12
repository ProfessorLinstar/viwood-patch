.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/utils/quota/Categorizer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/JobSchedulerService;

    return-void
.end method


# virtual methods
.method public final getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->$r8$lambda$Q16HuucOPC3Nu2dDmrkdR058M08(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p0

    return-object p0
.end method
