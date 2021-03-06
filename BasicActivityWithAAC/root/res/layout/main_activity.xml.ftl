<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto"
        xmlns:tools="http://schemas.android.com/tools">

    <data>

        <variable
                name="vm"
                type="${packageName}.viewmodels.${viewModelClass}" />
    </data>

    <androidx.coordinatorlayout.widget.CoordinatorLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            tools:context="${packageName}.activities.${activityClass}">

        <com.google.android.material.appbar.AppBarLayout
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:theme="@style/AppTheme.AppBarOverlay">

            <androidx.appcompat.widget.Toolbar
                    android:id="@+id/toolbar"
                    android:layout_width="match_parent"
                    android:layout_height="?attr/actionBarSize"
                    android:background="?attr/colorPrimary"
                    app:popupTheme="@style/AppTheme.PopupOverlay"/>

        </com.google.android.material.appbar.AppBarLayout>

        <include
                android:id="@+id/content"
                layout="@layout/${baseName?lower_case}_content"
                app:vm="@{vm}"/>

        <com.google.android.material.floatingactionbutton.FloatingActionButton
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_gravity="bottom|end"
                android:layout_margin="@dimen/fab_margin"
                android:onClick="@{vm::onClick}"
                app:srcCompat="@drawable/ic_add_white_24dp"
                tools:ignore="VectorDrawableCompat"/>

    </androidx.coordinatorlayout.widget.CoordinatorLayout>
</layout>
