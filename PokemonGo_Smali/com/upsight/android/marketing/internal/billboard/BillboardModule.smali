.class public final Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
.super Ljava/lang/Object;
.source "BillboardModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideBillboardManager(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;)Lcom/upsight/android/marketing/UpsightBillboardManager;
    .registers 6
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "contentStore"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v1

    .line 29
    .local v1, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    .line 31
    .local v0, "bus":Lcom/squareup/otto/Bus;
    new-instance v2, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;

    invoke-direct {v2, p1, p2, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/squareup/otto/Bus;)V

    return-object v2
.end method
