.class public final Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;
.super Ljava/lang/Object;
.source "NewTengu.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$finalTargetCell:I

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;

.field public final synthetic val$thrower:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;->val$finalTargetCell:I

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;->val$thrower:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;->val$finalTargetCell:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;->onThrow(I)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;->val$thrower:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
