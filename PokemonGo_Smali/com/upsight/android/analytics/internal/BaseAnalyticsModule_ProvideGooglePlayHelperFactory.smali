.class public final Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;
.super Ljava/lang/Object;
.source "BaseAnalyticsModule_ProvideGooglePlayHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)V
    .registers 4
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .line 24
    sget-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 3
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;-><init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
    .registers 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1, v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;->provideGooglePlayHelper(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->get()Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    move-result-object v0

    return-object v0
.end method
