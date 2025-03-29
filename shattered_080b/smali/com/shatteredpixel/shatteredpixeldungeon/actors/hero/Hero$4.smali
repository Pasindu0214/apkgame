.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$4;
.super Ljava/lang/Object;
.source "Hero.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->die(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$cause:Ljava/lang/Object;

.field public final synthetic val$finalAnkh:Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$4;->val$finalAnkh:Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$4;->val$cause:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$4;->val$finalAnkh:Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$4;->val$cause:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
